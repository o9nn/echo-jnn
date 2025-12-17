.class public final Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HolisticLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HolisticLandmarkerGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

.field public static final FACE_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final FACE_LANDMARKS_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x5

.field public static final HAND_LANDMARKS_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final HAND_ROI_REFINEMENT_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSE_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x6

.field public static final POSE_LANDMARKS_DETECTOR_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x7


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

.field private faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

.field private handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

.field private handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

.field private poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

.field private poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1287
    new-instance v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 1291
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergeFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearFaceDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergeFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearFaceLandmarksDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergePoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearPoseDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergePoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearPoseLandmarksDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergeHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearHandLandmarksDetectorGraphOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->setHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->mergeHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->clearHandRoiRefinementGraphOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-void
.end method

.method private clearFaceDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    return-void
.end method

.method private clearFaceLandmarksDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    return-void
.end method

.method private clearHandLandmarksDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-void
.end method

.method private clearHandRoiRefinementGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    return-void
.end method

.method private clearPoseDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    return-void
.end method

.method private clearPoseLandmarksDetectorGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

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

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 213
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
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

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    .line 412
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    :goto_0
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

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    .line 478
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    :goto_0
    return-void
.end method

.method private mergeHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    .line 280
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    :goto_0
    return-void
.end method

.method private mergeHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    .line 346
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    :goto_0
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

    .line 540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    .line 544
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    :goto_0
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

    .line 606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    .line 608
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    .line 610
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 702
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 705
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 679
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 685
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 643
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 650
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 690
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 697
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 667
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 674
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 630
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 637
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 655
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 662
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 1302
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

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

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

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

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    return-void
.end method

.method private setHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    return-void
.end method

.method private setHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

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

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

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

    .line 593
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    .line 1232
    sget-object p2, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1274
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 1261
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1264
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1269
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    return-object p1

    :pswitch_4
    const-string v0, "baseOptions_"

    const-string v1, "handLandmarksDetectorGraphOptions_"

    const-string v2, "handRoiRefinementGraphOptions_"

    const-string v3, "faceDetectorGraphOptions_"

    const-string v4, "faceLandmarksDetectorGraphOptions_"

    const-string v5, "poseDetectorGraphOptions_"

    const-string v6, "poseLandmarksDetectorGraphOptions_"

    .line 1240
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    .line 1252
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1237
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$1;)V

    return-object p1

    .line 1234
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 385
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHandLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHandRoiRefinementGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 517
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFaceDetectorGraphOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->faceLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHandLandmarksDetectorGraphOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHandRoiRefinementGraphOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->handRoiRefinementGraphOptions_:Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->poseLandmarksDetectorGraphOptions_:Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

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

    .line 153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
