.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;
.super Lcom/google/mediapipe/tasks/components/containers/Embedding;
.source "AutoValue_Embedding.java"


# instance fields
.field private final floatEmbedding:[F

.field private final headIndex:I

.field private final headName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final quantizedEmbedding:[B


# direct methods
.method constructor <init>([F[BILjava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "floatEmbedding",
            "quantizedEmbedding",
            "headIndex",
            "headName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[BI",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    iput p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null headName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null quantizedEmbedding"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null floatEmbedding"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
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

    .line 72
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/Embedding;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 73
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Embedding;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    .line 74
    instance-of v3, p1, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    if-eqz v3, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    iget-object v4, v4, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object v4

    :goto_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    if-eqz v3, :cond_2

    .line 75
    move-object v3, p1

    check-cast v3, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    iget-object v3, v3, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->headIndex()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->headName()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public floatEmbedding()[F
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    .line 88
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    .line 92
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public headIndex()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    return v0
.end method

.method public headName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    return-object v0
.end method

.method public quantizedEmbedding()[B
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Embedding{floatEmbedding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->floatEmbedding:[F

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantizedEmbedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->quantizedEmbedding:[B

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;->headName:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
