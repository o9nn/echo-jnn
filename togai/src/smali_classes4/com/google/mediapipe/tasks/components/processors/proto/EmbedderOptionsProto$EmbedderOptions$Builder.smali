.class public final Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EmbedderOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 299
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->access$000()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$1;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearL2Normalize()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->access$200(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-object p0
.end method

.method public clearQuantize()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->copyOnWrite()V

    .line 427
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->access$400(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 292
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

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getL2Normalize()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->getL2Normalize()Z

    move-result v0

    return v0
.end method

.method public getQuantize()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->getQuantize()Z

    move-result v0

    return v0
.end method

.method public hasL2Normalize()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->hasL2Normalize()Z

    move-result v0

    return v0
.end method

.method public hasQuantize()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->hasQuantize()Z

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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
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

    .line 292
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setL2Normalize(Z)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->copyOnWrite()V

    .line 347
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->access$100(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;Z)V

    return-object p0
.end method

.method public setQuantize(Z)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->access$300(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;Z)V

    return-object p0
.end method
