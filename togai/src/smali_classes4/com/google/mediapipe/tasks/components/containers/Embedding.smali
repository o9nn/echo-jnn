.class public abstract Lcom/google/mediapipe/tasks/components/containers/Embedding;
.super Ljava/lang/Object;
.source "Embedding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create([F[BILjava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/Embedding;
    .locals 1
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
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/Embedding;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Embedding;-><init>([F[BILjava/util/Optional;)V

    return-object v0
.end method

.method public static createFromProto(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)Lcom/google/mediapipe/tasks/components/containers/Embedding;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasFloatEmbedding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->getValuesCount()I

    move-result v0

    new-array v2, v0, [F

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->getValues(I)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v1, [F

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasQuantizedEmbedding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getValues()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    new-array v0, v1, [B

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadIndex()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasHeadName()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    .line 58
    :goto_2
    invoke-static {v2, v0, v1, p0}, Lcom/google/mediapipe/tasks/components/containers/Embedding;->create([F[BILjava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/Embedding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract floatEmbedding()[F
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

.method public abstract quantizedEmbedding()[B
.end method
