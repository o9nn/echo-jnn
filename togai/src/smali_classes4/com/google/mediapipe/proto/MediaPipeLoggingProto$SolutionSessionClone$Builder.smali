.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionCloneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionCloneOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3911
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$5800()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 3904
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGraphName()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1

    .line 4033
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 4034
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public clearInitLatencyMs()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1

    .line 4101
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 4102
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public clearMode()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1

    .line 3962
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 3963
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3904
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

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3904
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGraphName()Ljava/lang/String;
    .locals 1

    .line 3991
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getGraphName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraphNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4005
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getGraphNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitLatencyMs()J
    .locals 2

    .line 4076
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getInitLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1

    .line 3937
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object v0

    return-object v0
.end method

.method public hasGraphName()Z
    .locals 1

    .line 3978
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->hasGraphName()Z

    move-result v0

    return v0
.end method

.method public hasInitLatencyMs()Z
    .locals 1

    .line 4064
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->hasInitLatencyMs()Z

    move-result v0

    return v0
.end method

.method public hasMode()Z
    .locals 1

    .line 3925
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->hasMode()Z

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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
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

    .line 3904
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGraphName(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4019
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 4020
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGraphNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4049
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 4050
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInitLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4088
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 4089
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$6400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;J)V

    return-object p0
.end method

.method public setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3949
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->copyOnWrite()V

    .line 3950
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->access$5900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V

    return-object p0
.end method
