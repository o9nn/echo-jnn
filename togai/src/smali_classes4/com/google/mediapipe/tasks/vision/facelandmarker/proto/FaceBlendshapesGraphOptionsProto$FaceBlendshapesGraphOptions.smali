.class public final Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FaceBlendshapesGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceBlendshapesGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1e567208

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 347
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 351
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 373
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 374
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    move-result-object v3

    .line 375
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1e567208

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 372
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object v0
.end method

.method private mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 101
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 194
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 197
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 171
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 177
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 135
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 142
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 182
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 189
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 159
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 166
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 122
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 129
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 147
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 154
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 362
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

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

    .line 298
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 334
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 321
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 324
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 329
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    .line 306
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    .line 312
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 303
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$1;)V

    return-object p1

    .line 300
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;-><init>()V

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

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceBlendshapesGraphOptionsProto$FaceBlendshapesGraphOptions;->bitField0_:I

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

    .line 40
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
