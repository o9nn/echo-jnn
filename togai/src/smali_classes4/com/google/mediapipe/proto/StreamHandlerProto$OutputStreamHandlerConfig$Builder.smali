.class public final Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StreamHandlerProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1043
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$800()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/StreamHandlerProto$1;)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;"
        }
    .end annotation

    .line 1230
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1231
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1400(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1215
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1300(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1260
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1600(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInputSidePacket()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1245
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1500(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1

    .line 1331
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1332
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1900(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public clearOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1

    .line 1108
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1000(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1036
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

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1036
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getInputSidePacket(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getInputSidePacketCount()I

    move-result v0

    return v0
.end method

.method public getInputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    .line 1141
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getInputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 1140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamHandler()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getOutputStreamHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamHandlerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getOutputStreamHandlerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputStreamHandler()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->hasOutputStreamHandler()Z

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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
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

    .line 1036
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1800(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setInputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
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

    .line 1198
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1200(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1308
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1309
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1700(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1295
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1296
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1700(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOutputStreamHandler(Ljava/lang/String;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1096
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$900(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOutputStreamHandlerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1123
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 1124
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->access$1100(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
