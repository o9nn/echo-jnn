.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1109
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1000()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V
    .locals 0

    .line 1102
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public clearFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1169
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1400(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public clearHeadIndex()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    .line 1272
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1900(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public clearHeadName()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    .line 1343
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1344
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$2100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public clearQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1102
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

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddingCase()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getEmbeddingCase()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    move-result-object v0

    return-object v0
.end method

.method public getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    move-result-object v0

    return-object v0
.end method

.method public getHeadIndex()I
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadIndex()I

    move-result v0

    return v0
.end method

.method public getHeadName()Ljava/lang/String;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    move-result-object v0

    return-object v0
.end method

.method public hasFloatEmbedding()Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasFloatEmbedding()Z

    move-result v0

    return v0
.end method

.method public hasHeadIndex()Z
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasHeadIndex()Z

    move-result v0

    return v0
.end method

.method public hasHeadName()Z
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasHeadName()Z

    move-result v0

    return v0
.end method

.method public hasQuantizedEmbedding()Z
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->hasQuantizedEmbedding()Z

    move-result v0

    return v0
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

    .line 1102
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1160
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1300(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V

    return-object p0
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
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

    .line 1102
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1208
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1209
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V

    return-object p0
.end method

.method public setFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1152
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1153
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V

    return-object p0
.end method

.method public setFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V

    return-object p0
.end method

.method public setHeadIndex(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1258
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1259
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1800(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;I)V

    return-object p0
.end method

.method public setHeadName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1329
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1330
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$2000(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHeadNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1359
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$2200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1201
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V

    return-object p0
.end method

.method public setQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1191
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V

    return-object p0
.end method
