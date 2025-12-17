.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FaceConditionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;
    .locals 2

    .line 766
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions$Builder;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 767
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions$Builder;->setMinFaceDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->setMinFacePresenceConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertToProto()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;
    .locals 3

    .line 773
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->builder()Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 774
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->faceModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->minFaceDetectionConfidence()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setMinFaceDetectionConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->minFacePresenceConfidence()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setMinFacePresenceConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 777
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 778
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setOutputFaceBlendshapes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setOutputFacialTransformationMatrixes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setNumFaces(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    move-result-object v0

    .line 782
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;

    move-result-object v1

    .line 785
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v0

    sget-object v2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 786
    invoke-virtual {v0, v2}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getExtension(Lcom/google/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 783
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;->setFaceLandmarkerGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;

    return-object v0
.end method

.method abstract faceModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method abstract minFaceDetectionConfidence()F
.end method

.method abstract minFacePresenceConfidence()F
.end method

.method abstract pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method
