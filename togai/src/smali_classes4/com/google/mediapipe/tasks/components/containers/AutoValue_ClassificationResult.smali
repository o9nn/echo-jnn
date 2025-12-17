.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;
.super Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;
.source "AutoValue_ClassificationResult.java"


# instance fields
.field private final classifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Classifications;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampMs:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Optional;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->classifications:Ljava/util/List;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->timestampMs:Ljava/util/Optional;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null timestampMs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null classifications"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public classifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Classifications;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->classifications:Ljava/util/List;

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

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 50
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->classifications:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;->classifications()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->timestampMs:Ljava/util/Optional;

    .line 52
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/ClassificationResult;->timestampMs()Ljava/util/Optional;

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
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->classifications:Ljava/util/List;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->timestampMs:Ljava/util/Optional;

    .line 63
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public timestampMs()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->timestampMs:Ljava/util/Optional;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassificationResult{classifications="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->classifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_ClassificationResult;->timestampMs:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
