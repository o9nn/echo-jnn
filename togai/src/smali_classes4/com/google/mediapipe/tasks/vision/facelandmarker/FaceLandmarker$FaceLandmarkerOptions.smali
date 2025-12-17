.class public abstract Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "FaceLandmarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FaceLandmarkerOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9dNSszoC5zNOs0DFWdmM9quzEv0(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->setMinDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iBtZHjzP9DNVvDMbBV4tu6hJVRU(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;I)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->setNumFaces(I)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ueMbJlQ0Q-kmnqlc8sQihbMFqnE(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->setMinTrackingConfidence(F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yFwSf18cO-wx8zYRgNlMzwojR_o(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;F)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->setMinDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 2

    .line 537
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;-><init>()V

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 538
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setNumFaces(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 540
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setMinFaceDetectionConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setMinFacePresenceConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setMinTrackingConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 543
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setOutputFaceBlendshapes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;->setOutputFacialTransformationMatrixes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method public convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .locals 5

    .line 551
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    move-result-object v0

    .line 553
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v1

    .line 554
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v2

    sget-object v3, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->setUseStreamMode(Z)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    .line 556
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 552
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    move-result-object v0

    .line 561
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    move-result-object v1

    .line 562
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->numFaces()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 563
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minFaceDetectionConfidence()Ljava/util/Optional;

    move-result-object v2

    .line 564
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 569
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;

    move-result-object v2

    .line 570
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minFacePresenceConfidence()Ljava/util/Optional;

    move-result-object v3

    .line 571
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 572
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minTrackingConfidence()Ljava/util/Optional;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda3;-><init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 575
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    move-result-object v1

    .line 576
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;

    .line 578
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->newBuilder()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 581
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    .line 579
    invoke-virtual {v1, v2, v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->setExtension(Lcom/google/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    .line 582
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-object v0
.end method

.method abstract errorListener()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end method

.method abstract minFaceDetectionConfidence()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method abstract minFacePresenceConfidence()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method abstract minTrackingConfidence()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method abstract numFaces()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract outputFaceBlendshapes()Z
.end method

.method abstract outputFacialTransformationMatrixes()Z
.end method

.method abstract resultListener()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;
.end method
