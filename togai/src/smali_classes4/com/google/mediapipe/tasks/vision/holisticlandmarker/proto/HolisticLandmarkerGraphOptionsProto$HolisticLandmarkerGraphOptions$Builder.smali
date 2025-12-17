.class public final Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HolisticLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 718
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$1;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 795
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1008
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1079
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1500(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearHandLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 865
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearHandRoiRefinementGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 936
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 937
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1150
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1800(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1221
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$2100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHandLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getHandLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHandRoiRefinementGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getHandRoiRefinementGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceDetectorGraphOptions()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasFaceDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceLandmarksDetectorGraphOptions()Z
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasFaceLandmarksDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasHandLandmarksDetectorGraphOptions()Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasHandLandmarksDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasHandRoiRefinementGraphOptions()Z
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasHandRoiRefinementGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasPoseDetectorGraphOptions()Z
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasPoseDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasPoseLandmarksDetectorGraphOptions()Z
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->hasPoseLandmarksDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 711
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 782
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 783
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 997
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public mergeFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1067
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1068
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1400(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 711
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 711
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 711
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 711
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 711
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 711
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 711
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 711
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 711
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 711
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 711
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 711
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public mergeHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V

    return-object p0
.end method

.method public mergePoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1138
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1139
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1700(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public mergePoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1209
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1210
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$2000(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 972
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1056
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1043
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setHandLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 830
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V

    return-object p0
.end method

.method public setHandRoiRefinementGraphOptions(Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 901
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandRoiRefinementGraphOptionsProto$HandRoiRefinementGraphOptions;)V

    return-object p0
.end method

.method public setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1126
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1600(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1114
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1600(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1197
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1198
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1900(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setPoseLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 1185
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;->access$1900(Lcom/google/mediapipe/tasks/vision/holisticlandmarker/proto/HolisticLandmarkerGraphOptionsProto$HolisticLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;)V

    return-object p0
.end method
