.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMaskOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1598
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 1591
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1

    .line 1685
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1686
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public clearRasterization()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1

    .line 1756
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1757
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1650
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1591
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

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1591
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRasterization()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getRasterization()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->hasHeight()Z

    move-result v0

    return v0
.end method

.method public hasRasterization()Z
    .locals 1

    .line 1699
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->hasRasterization()Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->hasWidth()Z

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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
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

    .line 1591
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1745
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1746
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-object p0
.end method

.method public setHeight(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1676
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1677
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;I)V

    return-object p0
.end method

.method public setRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1733
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1734
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-object p0
.end method

.method public setRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1720
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1721
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-object p0
.end method

.method public setWidth(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1636
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->access$2100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;I)V

    return-object p0
.end method
