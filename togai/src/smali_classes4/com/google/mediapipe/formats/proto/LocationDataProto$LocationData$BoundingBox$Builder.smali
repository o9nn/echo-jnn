.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 531
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeight()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearWidth()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearXmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public clearYmin()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 524
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

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 524
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXmin()I
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getXmin()I

    move-result v0

    return v0
.end method

.method public getYmin()I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getYmin()I

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasHeight()Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasWidth()Z

    move-result v0

    return v0
.end method

.method public hasXmin()Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasXmin()Z

    move-result v0

    return v0
.end method

.method public hasYmin()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->hasYmin()Z

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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
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

    .line 524
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
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
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setWidth(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setXmin(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method

.method public setYmin(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->access$300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V

    return-object p0
.end method
