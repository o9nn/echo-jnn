.class public abstract Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;
.super Ljava/lang/Object;
.source "FaceLandmarkerResult.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/util/List;Ljava/util/Optional;Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "multiFaceLandmarksProto",
            "multiFaceBendshapesProto",
            "multiFaceTransformationMatrixesProto",
            "timestampMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
            ">;>;J)",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 50
    invoke-static {v1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->createListFromProto(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 58
    invoke-static {v1}, Lcom/google/mediapipe/tasks/components/containers/Category;->createListFromProto(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    :cond_2
    move-object v5, p0

    .line 64
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    .line 65
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 66
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 68
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedDataCount()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 74
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedDataCount()I

    move-result v1

    new-array v2, v1, [F

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    .line 76
    invoke-virtual {p2, v3}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedData(I)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 78
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "MatrixData must contain 4x4 matrix as a size 16 float array, but get size "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedDataCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " float array."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    :cond_6
    move-object v6, p0

    .line 83
    new-instance p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;-><init>(JLjava/util/List;Ljava/util/Optional;Ljava/util/Optional;)V

    return-object p0
.end method


# virtual methods
.method public abstract faceBlendshapes()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract faceLandmarks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract facialTransformationMatrixes()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation
.end method

.method public abstract timestampMs()J
.end method
