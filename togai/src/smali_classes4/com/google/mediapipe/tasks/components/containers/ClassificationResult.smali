.class public abstract Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
.super Ljava/lang/Object;
.source "ClassificationResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classifications",
            "timestampMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Classifications;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;

    .line 42
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;-><init>(Ljava/util/List;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;)Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getClassificationsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 56
    invoke-static {v2}, Lcom/google/mediapipe/tasks/components/containers/Classifications;->createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/Classifications;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->hasTimestampMs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    .line 60
    :goto_1
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;->create(Ljava/util/List;Ljava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract classifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Classifications;",
            ">;"
        }
    .end annotation
.end method

.method public abstract timestampMs()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
