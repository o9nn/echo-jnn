.class public interface abstract Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResultOrBuilder;
.super Ljava/lang/Object;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmbeddingResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getEmbeddings(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getEmbeddingsCount()I
.end method

.method public abstract getEmbeddingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestampMs()J
.end method

.method public abstract hasTimestampMs()Z
.end method
