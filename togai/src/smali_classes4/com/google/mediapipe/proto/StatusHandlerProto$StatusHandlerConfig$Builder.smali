.class public final Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StatusHandlerProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 710
    invoke-static {}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$000()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/StatusHandlerProto$1;)V
    .locals 0

    .line 703
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExternalInput(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
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
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;"
        }
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1055
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1100(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
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
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;"
        }
    .end annotation

    .line 918
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 919
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$600(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExternalInput(Ljava/lang/String;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1000(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExternalInputBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1083
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1300(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$500(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$800(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExternalInput()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1068
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1200(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public clearInputSidePacket()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$700(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1

    .line 1153
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1154
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1600(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public clearStatusHandler()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$200(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 703
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

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getExternalInput(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getExternalInputBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getExternalInputCount()I

    move-result v0

    return v0
.end method

.method public getExternalInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 971
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getExternalInputList()Ljava/util/List;

    move-result-object v0

    .line 970
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    .line 844
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getInputSidePacket(I)Ljava/lang/String;

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

    .line 862
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getInputSidePacketCount()I

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

    .line 810
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 811
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getInputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 810
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getStatusHandler()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getStatusHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusHandlerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getStatusHandlerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasStatusHandler()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->hasStatusHandler()Z

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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
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

    .line 703
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1143
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1500(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setExternalInput(ILjava/lang/String;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
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

    .line 1024
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$900(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
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

    .line 880
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$400(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1130
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1400(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1117
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 1118
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$1400(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-object p0
.end method

.method public setStatusHandler(Ljava/lang/String;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$100(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStatusHandlerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->access$300(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
