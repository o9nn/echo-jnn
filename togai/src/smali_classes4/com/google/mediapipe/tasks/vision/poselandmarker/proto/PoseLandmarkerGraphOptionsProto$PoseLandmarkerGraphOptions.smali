.class public final Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PoseLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoseLandmarkerGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1eca7ede

.field public static final MIN_TRACKING_CONFIDENCE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSE_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final POSE_LANDMARKS_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private minTrackingConfidence_:F

.field private poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

.field private poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 795
    new-instance v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 799
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 821
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 822
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    move-result-object v3

    .line 823
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1eca7ede

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 820
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->minTrackingConfidence_:F

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;F)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->setMinTrackingConfidence(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->clearMinTrackingConfidence()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->mergePoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->clearPoseDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->mergePoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->clearPoseLandmarksDetectorGraphOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearMinTrackingConfidence()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->minTrackingConfidence_:F

    return-void
.end method

.method private clearPoseDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearPoseLandmarksDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

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

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 161
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergePoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    .line 228
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergePoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    .line 294
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 440
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 443
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 417
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 423
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 381
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 388
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 428
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 435
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 405
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 412
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 368
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 375
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 393
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 400
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 810
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->minTrackingConfidence_:F

    return-void
.end method

.method private setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

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

    .line 742
    sget-object p2, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 788
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 782
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 769
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 772
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 777
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    const-string p3, "poseDetectorGraphOptions_"

    const-string v0, "poseLandmarksDetectorGraphOptions_"

    const-string v1, "minTrackingConfidence_"

    .line 750
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1001\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    .line 760
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 747
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$1;)V

    return-object p1

    .line 744
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMinTrackingConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->minTrackingConfidence_:F

    return v0
.end method

.method public getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinTrackingConfidence()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPoseDetectorGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPoseLandmarksDetectorGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptions;->bitField0_:I

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

    .line 99
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
