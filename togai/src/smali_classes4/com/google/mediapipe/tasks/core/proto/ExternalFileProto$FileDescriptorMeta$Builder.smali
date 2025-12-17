.class public final Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExternalFileProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMetaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMetaOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1259
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1300()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFd()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1311
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1500(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public clearLength()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1

    .line 1374
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1375
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1700(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public clearOffset()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1

    .line 1438
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1439
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1900(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1252
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

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFd()I
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->getFd()I

    move-result v0

    return v0
.end method

.method public getLength()J
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .line 1407
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->getOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFd()Z
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->hasFd()Z

    move-result v0

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->hasLength()Z

    move-result v0

    return v0
.end method

.method public hasOffset()Z
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->hasOffset()Z

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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
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

    .line 1252
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFd(I)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1297
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1298
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1400(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;I)V

    return-object p0
.end method

.method public setLength(J)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1600(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;J)V

    return-object p0
.end method

.method public setOffset(J)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->access$1800(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;J)V

    return-object p0
.end method
