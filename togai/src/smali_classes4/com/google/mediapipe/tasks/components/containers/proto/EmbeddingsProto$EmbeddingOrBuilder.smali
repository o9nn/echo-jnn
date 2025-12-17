.class public interface abstract Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;
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
    name = "EmbeddingOrBuilder"
.end annotation


# virtual methods
.method public abstract getEmbeddingCase()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
.end method

.method public abstract getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
.end method

.method public abstract getHeadIndex()I
.end method

.method public abstract getHeadName()Ljava/lang/String;
.end method

.method public abstract getHeadNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
.end method

.method public abstract hasFloatEmbedding()Z
.end method

.method public abstract hasHeadIndex()Z
.end method

.method public abstract hasHeadName()Z
.end method

.method public abstract hasQuantizedEmbedding()Z
.end method
