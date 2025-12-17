.class public final Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 504
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$000()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 578
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$200(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 801
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$900(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public clearType()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$500(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 497
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

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->hasOptions()Z

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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
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

    .line 497
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$800(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$100(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$300(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$700(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$700(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$400(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->access$600(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
