.class public Lcom/google/mediapipe/tasks/components/utils/CosineSimilarity;
.super Ljava/lang/Object;
.source "CosineSimilarity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compute(Lcom/google/mediapipe/tasks/components/containers/Embedding;Lcom/google/mediapipe/tasks/components/containers/Embedding;)D
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->floatEmbedding()[F

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mediapipe/tasks/components/utils/CosineSimilarity;->computeFloat([F[F)D

    move-result-wide p0

    return-wide p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->quantizedEmbedding()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mediapipe/tasks/components/utils/CosineSimilarity;->computeQuantized([B[B)D

    move-result-wide p0

    return-wide p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot compute cosine similarity between quantized and float embeddings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static computeFloat([F[F)D
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 44
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    move-wide v7, v5

    .line 54
    :goto_0
    array-length v9, p0

    if-ge v2, v9, :cond_0

    .line 55
    aget v9, p0, v2

    aget v10, p1, v2

    mul-float v11, v9, v10

    float-to-double v11, v11

    add-double/2addr v5, v11

    mul-float/2addr v9, v9

    float-to-double v11, v9

    add-double/2addr v3, v11

    mul-float/2addr v10, v10

    float-to-double v9, v10

    add-double/2addr v7, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p0, v3, v0

    if-lez p0, :cond_1

    cmpg-double p0, v7, v0

    if-lez p0, :cond_1

    mul-double/2addr v3, v7

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v5, p0

    return-wide v5

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot compute cosine similarity on embedding with 0 norm."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p0, p0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot compute cosine similarity between embeddings of different sizes (%d vs. %d)."

    .line 46
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static computeQuantized([B[B)D
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "u",
            "v"
        }
    .end annotation

    .line 67
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    move-wide v7, v5

    .line 77
    :goto_0
    array-length v9, p0

    if-ge v2, v9, :cond_0

    .line 78
    aget-byte v9, p0, v2

    aget-byte v10, p1, v2

    mul-int v11, v9, v10

    int-to-double v11, v11

    add-double/2addr v5, v11

    mul-int/2addr v9, v9

    int-to-double v11, v9

    add-double/2addr v3, v11

    mul-int/2addr v10, v10

    int-to-double v9, v10

    add-double/2addr v7, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p0, v3, v0

    if-lez p0, :cond_1

    cmpg-double p0, v7, v0

    if-lez p0, :cond_1

    mul-double/2addr v3, v7

    .line 86
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v5, p0

    return-wide v5

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot compute cosine similarity on embedding with 0 norm."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p0, p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot compute cosine similarity between embeddings of different sizes (%d vs. %d)."

    .line 69
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
