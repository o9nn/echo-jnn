.class public final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FaceGeometryGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceGeometryGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1ebd50f2

.field public static final GEOMETRY_PIPELINE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 282
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 286
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 308
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 309
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v3

    .line 310
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1ebd50f2

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 307
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->setGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->mergeGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->clearGeometryPipelineOptions()V

    return-void
.end method

.method private clearGeometryPipelineOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object v0
.end method

.method private mergeGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    .line 71
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 159
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 162
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 136
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 142
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 100
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 107
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 147
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 154
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 124
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 131
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 87
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 94
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 112
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 119
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 297
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGeometryPipelineOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

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

    .line 233
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 275
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 269
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 256
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 259
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 264
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "geometryPipelineOptions_"

    .line 241
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 247
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 238
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$1;)V

    return-object p1

    .line 235
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;-><init>()V

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

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryPipelineOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->geometryPipelineOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/calculators/proto/FaceGeometryPipelineCalculatorOptionsProto$FaceGeometryPipelineCalculatorOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasGeometryPipelineOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->bitField0_:I

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

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
