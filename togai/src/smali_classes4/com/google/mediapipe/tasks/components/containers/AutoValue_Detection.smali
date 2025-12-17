.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;
.super Lcom/google/mediapipe/tasks/components/containers/Detection;
.source "AutoValue_Detection.java"


# instance fields
.field private final boundingBox:Landroid/graphics/RectF;

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final keypoints:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "categories",
            "boundingBox",
            "keypoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;",
            "Landroid/graphics/RectF;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Detection;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null keypoints"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null boundingBox"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null categories"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public boundingBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public categories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Detection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Detection;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->categories()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->boundingBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    .line 67
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Detection;->keypoints()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    .line 78
    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    .line 80
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public keypoints()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detection{categories="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Detection;->keypoints:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
