.class Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;
.super Ljava/lang/Object;
.source "FaceLandmarker.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
        "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
        "Lcom/google/mediapipe/framework/image/MPImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$landmarkerOptions"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/framework/image/MPImage;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    const/4 v1, 0x1

    .line 210
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToTaskInput(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "packets"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "packets"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;

    move-result-object p1

    return-object p1
.end method

.method public convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    .line 174
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    .line 176
    invoke-virtual {v4}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 175
    invoke-static {v4, p1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->generateResultTimestampMs(Lcom/google/mediapipe/tasks/vision/core/RunningMode;Lcom/google/mediapipe/framework/Packet;)J

    move-result-wide v4

    .line 171
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->create(Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;

    move-result-object p1

    return-object p1

    .line 179
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    .line 180
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->outputFaceBlendshapes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;->access$000()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    .line 183
    invoke-static {v1, v2}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 187
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    .line 188
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->outputFacialTransformationMatrixes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;->access$100()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/framework/Packet;

    invoke-static {}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    .line 190
    invoke-static {v2, v3}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;

    .line 194
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometry;->getPoseTransformMatrix()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 200
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/framework/Packet;

    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    .line 199
    invoke-static {v3, v4}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$1;->val$landmarkerOptions:Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    .line 204
    invoke-virtual {v4}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 203
    invoke-static {v4, p1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->generateResultTimestampMs(Lcom/google/mediapipe/tasks/vision/core/RunningMode;Lcom/google/mediapipe/framework/Packet;)J

    move-result-wide v4

    .line 198
    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->create(Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;

    move-result-object p1

    return-object p1
.end method
