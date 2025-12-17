.class public final Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExternalFileProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFileOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 518
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$000()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFileContent()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$200(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public clearFileDescriptorMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$800(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public clearFileName()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$400(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public clearFilePointerMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$1100(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 511
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

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFileContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptorMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileDescriptorMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFilePointerMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFilePointerMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    move-result-object v0

    return-object v0
.end method

.method public hasFileContent()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->hasFileContent()Z

    move-result v0

    return v0
.end method

.method public hasFileDescriptorMeta()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->hasFileDescriptorMeta()Z

    move-result v0

    return v0
.end method

.method public hasFileName()Z
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->hasFileName()Z

    move-result v0

    return v0
.end method

.method public hasFilePointerMeta()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->hasFilePointerMeta()Z

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

    .line 511
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 716
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$700(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public mergeFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$1000(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V

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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
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

    .line 511
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFileContent(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$100(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$600(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public setFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 689
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$600(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$300(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFileNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$500(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 788
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$900(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V

    return-object p0
.end method

.method public setFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->access$900(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V

    return-object p0
.end method
