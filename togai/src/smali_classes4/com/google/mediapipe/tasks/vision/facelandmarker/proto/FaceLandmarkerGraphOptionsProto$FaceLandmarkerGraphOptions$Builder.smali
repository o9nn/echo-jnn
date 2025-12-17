.class public final Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FaceLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 541
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$1;)V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 689
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceGeometryGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public clearMinTrackingConfidence()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 534
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

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getFaceDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFaceGeometryGraphOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getFaceGeometryGraphOptions()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getFaceLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMinTrackingConfidence()F
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->getMinTrackingConfidence()F

    move-result v0

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceDetectorGraphOptions()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->hasFaceDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceGeometryGraphOptions()Z
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->hasFaceGeometryGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceLandmarksDetectorGraphOptions()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->hasFaceLandmarksDetectorGraphOptions()Z

    move-result v0

    return v0
.end method

.method public hasMinTrackingConfidence()Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->hasMinTrackingConfidence()Z

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

    .line 534
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public mergeFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 876
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-object p0
.end method

.method public mergeFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
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

    .line 534
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 653
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facedetector/proto/FaceDetectorGraphOptionsProto$FaceDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-object p0
.end method

.method public setFaceGeometryGraphOptions(Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 851
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryGraphOptionsProto$FaceGeometryGraphOptions;)V

    return-object p0
.end method

.method public setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setFaceLandmarksDetectorGraphOptions(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarksDetectorGraphOptionsProto$FaceLandmarksDetectorGraphOptions;)V

    return-object p0
.end method

.method public setMinTrackingConfidence(F)Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/facelandmarker/proto/FaceLandmarkerGraphOptionsProto$FaceLandmarkerGraphOptions;F)V

    return-object p0
.end method
