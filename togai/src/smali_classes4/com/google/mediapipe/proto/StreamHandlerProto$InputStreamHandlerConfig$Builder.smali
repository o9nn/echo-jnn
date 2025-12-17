.class public final Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StreamHandlerProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$000()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/StreamHandlerProto$1;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$200(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$600(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
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

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamHandler()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getInputStreamHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamHandlerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getInputStreamHandlerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasInputStreamHandler()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->hasInputStreamHandler()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->hasOptions()Z

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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
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

    .line 311
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$500(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setInputStreamHandler(Ljava/lang/String;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$100(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInputStreamHandlerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$300(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$400(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->access$400(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method
