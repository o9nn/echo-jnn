.class public final Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TensorsToSegmentationCalculatorOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-static {}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$000()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLabelItems()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$400(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearSegmenterOptions()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 389
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$300(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 335
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

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public containsLabelItems(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItemsCount()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLabelItemsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 451
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    .line 450
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItemsOrDefault(JLcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 467
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    .line 468
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    :cond_0
    return-object p3
.end method

.method public getLabelItemsOrThrow(J)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 483
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    .line 484
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p1

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasSegmenterOptions()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->hasSegmenterOptions()Z

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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
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

    .line 335
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$200(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method

.method public putAllLabelItems(Ljava/util/Map;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
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
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;)",
            "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$400(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLabelItems(JLcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 500
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$400(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLabelItems(J)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$400(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 374
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$100(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method

.method public setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->access$100(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method
