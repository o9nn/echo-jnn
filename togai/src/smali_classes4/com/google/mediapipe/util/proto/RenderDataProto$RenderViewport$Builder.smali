.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewportOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11188
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$19900()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 11181
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearComposeOnVideo()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1

    .line 11440
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11441
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public clearHeightPx()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1

    .line 11384
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11385
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public clearId()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1

    .line 11253
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11254
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public clearWidthPx()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1

    .line 11348
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11349
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11181
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

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComposeOnVideo()Z
    .locals 1

    .line 11413
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getComposeOnVideo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPx()I
    .locals 1

    .line 11367
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getHeightPx()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 11214
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11227
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWidthPx()I
    .locals 1

    .line 11309
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->getWidthPx()I

    move-result v0

    return v0
.end method

.method public hasComposeOnVideo()Z
    .locals 1

    .line 11400
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->hasComposeOnVideo()Z

    move-result v0

    return v0
.end method

.method public hasHeightPx()Z
    .locals 1

    .line 11359
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->hasHeightPx()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .line 11202
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasWidthPx()Z
    .locals 1

    .line 11290
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->hasWidthPx()Z

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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
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

    .line 11181
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setComposeOnVideo(Z)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11426
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11427
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Z)V

    return-object p0
.end method

.method public setHeightPx(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11375
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11376
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;I)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11240
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11241
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11268
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11269
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWidthPx(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11328
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->copyOnWrite()V

    .line 11329
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;->access$20300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;I)V

    return-object p0
.end method
