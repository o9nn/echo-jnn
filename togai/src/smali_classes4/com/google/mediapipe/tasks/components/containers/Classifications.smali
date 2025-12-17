.class public abstract Lcom/google/mediapipe/tasks/components/containers/Classifications;
.super Ljava/lang/Object;
.source "Classifications.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;ILjava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/Classifications;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "categories",
            "headIndex",
            "headName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;I",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/Classifications;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;

    .line 40
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Classifications;-><init>(Ljava/util/List;ILjava/util/Optional;)V

    return-object v0
.end method

.method public static createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/Classifications;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getClassificationList()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/Category;->createListFromProto(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->hasHeadName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadIndex()I

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/google/mediapipe/tasks/components/containers/Classifications;->create(Ljava/util/List;ILjava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/Classifications;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract categories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract headIndex()I
.end method

.method public abstract headName()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
