.class public final Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClassificationsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 411
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$000()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$1;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClassificationList()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 482
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$300(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public clearHeadIndex()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$500(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public clearHeadName()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$700(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 404
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

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassificationList()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getClassificationList()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeadIndex()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadIndex()I

    move-result v0

    return v0
.end method

.method public getHeadName()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasClassificationList()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->hasClassificationList()Z

    move-result v0

    return v0
.end method

.method public hasHeadIndex()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->hasHeadIndex()Z

    move-result v0

    return v0
.end method

.method public hasHeadName()Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->hasHeadName()Z

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

    .line 404
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$200(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
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

    .line 404
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$100(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$100(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-object p0
.end method

.method public setHeadIndex(I)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$400(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;I)V

    return-object p0
.end method

.method public setHeadName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$600(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHeadNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->access$800(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
