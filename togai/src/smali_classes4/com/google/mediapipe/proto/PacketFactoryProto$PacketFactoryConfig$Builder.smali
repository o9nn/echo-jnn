.class public final Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PacketFactoryProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 726
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$200()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/PacketFactoryProto$1;)V
    .locals 0

    .line 719
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExternalOutput()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1000(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public clearOutputSidePacket()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$700(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public clearPacketFactory()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 792
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 719
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

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 719
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalOutput()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getExternalOutput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalOutputBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getExternalOutputBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getOptions()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSidePacket()Ljava/lang/String;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getOutputSidePacket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSidePacketBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getOutputSidePacketBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPacketFactory()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getPacketFactory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPacketFactoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getPacketFactoryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasExternalOutput()Z
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->hasExternalOutput()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputSidePacket()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->hasOutputSidePacket()Z

    move-result v0

    return v0
.end method

.method public hasPacketFactory()Z
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->hasPacketFactory()Z

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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
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

    .line 719
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 1029
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-object p0
.end method

.method public setExternalOutput(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 941
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$900(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExternalOutputBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1100(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 1017
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$1200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-object p0
.end method

.method public setOutputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$600(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 888
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$800(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPacketFactory(Ljava/lang/String;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPacketFactoryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->access$500(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
