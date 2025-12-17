.class public final Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarksDetectionResultProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1159
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1400()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$1;)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClassifications(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;"
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1347
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLandmarks(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;"
        }
    .end annotation

    .line 1244
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1245
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRects(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;"
        }
    .end annotation

    .line 1550
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1551
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllWorldLandmarks(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;"
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1449
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1337
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1338
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1337
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1319
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addClassifications(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1309
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1310
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public addLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1235
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1236
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 1235
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public addLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1216
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public addLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1225
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1226
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public addLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1207
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1208
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public addRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1540
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1542
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1541
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public addRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1522
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1523
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public addRects(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1531
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1532
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public addRects(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1513
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1514
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3400(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public addWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1438
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1439
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1440
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1439
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1420
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1421
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1429
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1430
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addWorldLandmarks(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1411
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1412
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassifications()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1

    .line 1354
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1355
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearLandmarks()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1

    .line 1252
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1253
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1900(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearRects()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1559
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V

    return-object p0
.end method

.method public clearWorldLandmarks()Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1

    .line 1456
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1457
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1152
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

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassifications(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getClassifications(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object p1

    return-object p1
.end method

.method public getClassificationsCount()I
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getClassificationsCount()I

    move-result v0

    return v0
.end method

.method public getClassificationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1271
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getClassificationsList()Ljava/util/List;

    move-result-object v0

    .line 1270
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1152
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    move-result-object p1

    return-object p1
.end method

.method public getLandmarksCount()I
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getLandmarksCount()I

    move-result v0

    return v0
.end method

.method public getLandmarksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1169
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getLandmarksList()Ljava/util/List;

    move-result-object v0

    .line 1168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRects(I)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getRects(I)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    move-result-object p1

    return-object p1
.end method

.method public getRectsCount()I
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getRectsCount()I

    move-result v0

    return v0
.end method

.method public getRectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1475
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getRectsList()Ljava/util/List;

    move-result-object v0

    .line 1474
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWorldLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getWorldLandmarks(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    return-object p1
.end method

.method public getWorldLandmarksCount()I
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getWorldLandmarksCount()I

    move-result v0

    return v0
.end method

.method public getWorldLandmarksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1373
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->getWorldLandmarksList()Ljava/util/List;

    move-result-object v0

    .line 1372
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 1152
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
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

    .line 1152
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeClassifications(I)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2600(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V

    return-object p0
.end method

.method public removeLandmarks(I)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1260
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2000(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V

    return-object p0
.end method

.method public removeRects(I)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1567
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3800(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V

    return-object p0
.end method

.method public removeWorldLandmarks(I)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1465
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3200(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;I)V

    return-object p0
.end method

.method public setClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1300
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1301
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1302
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1301
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setClassifications(ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1291
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1292
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2100(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1198
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1200
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 1199
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public setLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1189
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1190
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V

    return-object p0
.end method

.method public setRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1505
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1506
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1505
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public setRects(ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1495
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1496
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$3300(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V

    return-object p0
.end method

.method public setWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1402
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1403
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    .line 1404
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1403
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public setWorldLandmarks(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->copyOnWrite()V

    .line 1394
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;->access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$MultiLandmarksDetectionResult;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method
