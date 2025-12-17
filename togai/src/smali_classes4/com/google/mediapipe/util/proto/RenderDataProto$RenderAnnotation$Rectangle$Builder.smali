.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1536
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1400()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 1529
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBottom()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1703
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1704
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearLeft()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1595
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1596
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearNormalized()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1739
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1740
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearRight()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1667
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1668
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearRotation()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1791
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1792
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearTop()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1631
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1632
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public clearTopLeftThickness()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    .line 1843
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1844
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1529
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

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBottom()D
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getBottom()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1529
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()D
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getLeft()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormalized()Z
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getNormalized()Z

    move-result v0

    return v0
.end method

.method public getRight()D
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getRight()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRotation()D
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getRotation()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getTop()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTopLeftThickness()D
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getTopLeftThickness()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasBottom()Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasBottom()Z

    move-result v0

    return v0
.end method

.method public hasLeft()Z
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasLeft()Z

    move-result v0

    return v0
.end method

.method public hasNormalized()Z
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasNormalized()Z

    move-result v0

    return v0
.end method

.method public hasRight()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasRight()Z

    move-result v0

    return v0
.end method

.method public hasRotation()Z
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasRotation()Z

    move-result v0

    return v0
.end method

.method public hasTop()Z
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasTop()Z

    move-result v0

    return v0
.end method

.method public hasTopLeftThickness()Z
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->hasTopLeftThickness()Z

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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
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

    .line 1529
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBottom(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1694
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1695
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method

.method public setLeft(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1580
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1581
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method

.method public setNormalized(Z)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1731
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;Z)V

    return-object p0
.end method

.method public setRight(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1658
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1659
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method

.method public setRotation(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1778
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1779
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method

.method public setTop(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1622
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$1700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method

.method public setTopLeftThickness(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1830
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->copyOnWrite()V

    .line 1831
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->access$2700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V

    return-object p0
.end method
