.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1403
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2000()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V
    .locals 0

    .line 1396
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLandmarkList(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;"
        }
    .end annotation

    .line 1488
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1489
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1478
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1479
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1480
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1479
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1460
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1469
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1470
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1451
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1452
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2200(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLandmarkList()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1497
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1396
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

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    return-object p1
.end method

.method public getLandmarkListCount()I
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkListCount()I

    move-result v0

    return v0
.end method

.method public getLandmarkListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1413
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getLandmarkListList()Ljava/util/List;

    move-result-object v0

    .line 1412
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
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

    .line 1396
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1505
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;I)V

    return-object p0
.end method

.method public setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1442
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1443
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1444
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1443
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method

.method public setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
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

    .line 1433
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->copyOnWrite()V

    .line 1434
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->access$2100(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-object p0
.end method
