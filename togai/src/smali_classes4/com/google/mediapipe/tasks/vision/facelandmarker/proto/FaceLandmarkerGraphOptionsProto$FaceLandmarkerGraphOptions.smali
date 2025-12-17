.class public final Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FaceLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceLandmarkerGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1e563cd6

.field public static final FACE_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final FACE_GEOMETRY_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x5

.field public static final FACE_LANDMARKS_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final MIN_TRACKING_CONFIDENCE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

.field private faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

.field private faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

.field private minTrackingConfidence_:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 952
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 956
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 978
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 979
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object v3

    .line 980
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1e563cd6

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 977
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->minTrackingConfidence_:F

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;F)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->setMinTrackingConfidence(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->clearMinTrackingConfidence()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->setFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->mergeFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->clearFaceGeometryGraphOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->mergeFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->clearFaceDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->mergeFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->clearFaceLandmarksDetectorGraphOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearFaceDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearFaceGeometryGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearFaceLandmarksDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearMinTrackingConfidence()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->minTrackingConfidence_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

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

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 180
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    .line 247
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    .line 433
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    .line 313
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 525
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 528
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 502
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 508
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 466
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 473
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 513
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 520
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 490
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 497
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 453
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 460
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 478
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 485
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 967
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setMinTrackingConfidence(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->minTrackingConfidence_:F

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

    .line 898
    sget-object p2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 945
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 939
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 926
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 929
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 934
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "baseOptions_"

    const-string v2, "faceDetectorGraphOptions_"

    const-string v3, "faceLandmarksDetectorGraphOptions_"

    const-string v4, "minTrackingConfidence_"

    const-string v5, "faceGeometryGraphOptions_"

    .line 906
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1001\u0003\u0005\u1009\u0004"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 917
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 903
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$1;)V

    return-object p1

    .line 900
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFaceGeometryGraphOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceGeometryGraphOptions_:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMinTrackingConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->minTrackingConfidence_:F

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFaceDetectorGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFaceGeometryGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFaceLandmarksDetectorGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinTrackingConfidence()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->bitField0_:I

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

    .line 118
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
