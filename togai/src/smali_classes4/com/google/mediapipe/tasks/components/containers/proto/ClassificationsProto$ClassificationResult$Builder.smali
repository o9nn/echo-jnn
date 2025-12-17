.class public final Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1105
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1000()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$1;)V
    .locals 0

    .line 1098
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllClassifications(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
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
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;"
        }
    .end annotation

    .line 1240
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1241
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1400(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addClassifications(ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
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

    .line 1225
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1226
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    .line 1227
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 1226
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1300(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public addClassifications(ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
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

    .line 1197
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1198
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1300(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public addClassifications(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1211
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1212
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public addClassifications(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1183
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassifications()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1254
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;)V

    return-object p0
.end method

.method public clearTimestampMs()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1

    .line 1338
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1339
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1800(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1098
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

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassifications(I)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getClassifications(I)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    move-result-object p1

    return-object p1
.end method

.method public getClassificationsCount()I
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getClassificationsCount()I

    move-result v0

    return v0
.end method

.method public getClassificationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    .line 1120
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getClassificationsList()Ljava/util/List;

    move-result-object v0

    .line 1119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampMs()J
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->getTimestampMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasTimestampMs()Z
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->hasTimestampMs()Z

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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
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

    .line 1098
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeClassifications(I)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1267
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;I)V

    return-object p0
.end method

.method public setClassifications(ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
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

    .line 1169
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1170
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    .line 1171
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 1170
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public setClassifications(ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
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

    .line 1155
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1156
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;ILcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public setTimestampMs(J)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1320
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;->access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResult;J)V

    return-object p0
.end method
