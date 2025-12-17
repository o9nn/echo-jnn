.class public final Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConditionedImageGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1601
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2000()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$1;)V
    .locals 0

    .line 1594
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2100(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)V

    return-object p0
.end method

.method public clearDepthConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1

    .line 1756
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1757
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$3000(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)V

    return-object p0
.end method

.method public clearEdgeConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1709
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2700(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)V

    return-object p0
.end method

.method public clearFaceConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1

    .line 1660
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1661
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1594
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

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConditionTypeOptionsCase()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$ConditionTypeOptionsCase;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->getConditionTypeOptionsCase()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$ConditionTypeOptionsCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDepthConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->getDepthConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->getEdgeConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getFaceConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->getFaceConditionTypeOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasDepthConditionTypeOptions()Z
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->hasDepthConditionTypeOptions()Z

    move-result v0

    return v0
.end method

.method public hasEdgeConditionTypeOptions()Z
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->hasEdgeConditionTypeOptions()Z

    move-result v0

    return v0
.end method

.method public hasFaceConditionTypeOptions()Z
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->hasFaceConditionTypeOptions()Z

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

    .line 1594
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeDepthConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1748
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2900(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)V

    return-object p0
.end method

.method public mergeEdgeConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1700
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1701
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2600(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)V

    return-object p0
.end method

.method public mergeFaceConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1652
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1653
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)V

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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
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

    .line 1594
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDepthConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1740
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1741
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2800(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)V

    return-object p0
.end method

.method public setDepthConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1731
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1732
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2800(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$DepthConditionTypeOptions;)V

    return-object p0
.end method

.method public setEdgeConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1692
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1693
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)V

    return-object p0
.end method

.method public setEdgeConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1684
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$EdgeConditionTypeOptions;)V

    return-object p0
.end method

.method public setFaceConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1645
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)V

    return-object p0
.end method

.method public setFaceConditionTypeOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1635
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->copyOnWrite()V

    .line 1636
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;->access$2200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ConditionedImageGraphOptionsProto$ConditionedImageGraphOptions$FaceConditionTypeOptions;)V

    return-object p0
.end method
