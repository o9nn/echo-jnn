.class public final Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HandLandmarksDetectorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandLandmarksDetectorGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1c47e016

.field public static final MIN_DETECTION_CONFIDENCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private minDetectionConfidence_:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 481
    new-instance v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 485
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 507
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 508
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    move-result-object v3

    .line 509
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1c47e016

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 506
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->minDetectionConfidence_:F

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;F)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->setMinDetectionConfidence(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->clearMinDetectionConfidence()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearMinDetectionConfidence()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->minDetectionConfidence_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

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

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 123
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 270
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 273
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 247
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 253
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 211
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 218
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 258
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 265
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 235
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 242
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 198
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 205
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 223
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 230
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 496
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    return-void
.end method

.method private setMinDetectionConfidence(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->minDetectionConfidence_:F

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

    .line 430
    sget-object p2, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 474
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 468
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 455
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 458
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 463
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    const-string p3, "minDetectionConfidence_"

    .line 438
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1001\u0001"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 446
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$1;)V

    return-object p1

    .line 432
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMinDetectionConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->minDetectionConfidence_:F

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinDetectionConfidence()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->bitField0_:I

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

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
