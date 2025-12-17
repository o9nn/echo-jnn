.class public final synthetic Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda1;->f$0:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$$ExternalSyntheticLambda1;->f$0:Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->$r8$lambda$yFwSf18cO-wx8zYRgNlMzwojR_o(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;F)Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;

    return-void
.end method
