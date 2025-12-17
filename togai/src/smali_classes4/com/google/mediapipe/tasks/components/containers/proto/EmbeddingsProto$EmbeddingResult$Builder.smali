.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1823
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2400()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V
    .locals 0

    .line 1816
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEmbeddings(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;"
        }
    .end annotation

    .line 1948
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1949
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2800(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1934
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1935
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1936
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1935
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public addEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1908
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1909
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public addEmbeddings(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1921
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1922
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2600(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public addEmbeddings(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1895
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1896
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2600(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmbeddings()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1961
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2900(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)V

    return-object p0
.end method

.method public clearTimestampMs()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1

    .line 2044
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 2045
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$3200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1816
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

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddings(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->getEmbeddings(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddingsCount()I
    .locals 1

    .line 1848
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->getEmbeddingsCount()I

    move-result v0

    return v0
.end method

.method public getEmbeddingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation

    .line 1836
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1837
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->getEmbeddingsList()Ljava/util/List;

    move-result-object v0

    .line 1836
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMs()J
    .locals 2

    .line 2009
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->getTimestampMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasTimestampMs()Z
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->hasTimestampMs()Z

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

    .line 1816
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
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

    .line 1816
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeEmbeddings(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1972
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1973
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$3000(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;I)V

    return-object p0
.end method

.method public setEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1882
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1883
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1884
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1883
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public setEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1869
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 1870
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$2500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-object p0
.end method

.method public setTimestampMs(J)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->copyOnWrite()V

    .line 2027
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->access$3100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;J)V

    return-object p0
.end method
